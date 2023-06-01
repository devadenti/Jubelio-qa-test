Given('User go to inventory page') do
    visit "https://app.jubelio.com/home/inventory"
    expect(find("[placeholder='Nama, SKU, Merek Lain']"))
  end
  
  And('User fill keyword {string} in search field inventory page') do |keyword|
    expect(find("[placeholder='Nama, SKU, Merek Lain']").set(keyword))
    find(:xpath, "//span[@class='glyphicon glyphicon-search']").click
  end
  
  And('user click on the checkbox result of the searching') do
    find(:xpath, "//label[@for='checkbox0']").click
  end
  
  And('User click Penyesuaian Persediaan button for update the stock') do
    find_button('Penyesuaian Persediaan').click
    expect(page).to(have_content('Qty Akhir'), wait: 10, visible: true)
    element = find(:xpath, "//*[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[2]/div")
    element.double_click
  end
  
  When('User fill quantity to {string}') do |quantity|
    elementSet_quanitity = find(:xpath, "//input[@class=' editor-main']")
    elementSet_quanitity.set(quantity)
    find(:xpath, "//*[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[5]/div/div/span/div").click
    sleep 2
  end
  
  And('User click simpan button') do
    find_button('Simpan').click
  end
  
  Then('User success to update inventory quantity') do
    expect(page).to(have_content('Data berhasil disimpan.'), wait: 10)
  end
  