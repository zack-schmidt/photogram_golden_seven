require "rails_helper"

feature "Photo details page" do
  it "has a functional RCAV", points: 1 do
    photo = create(:photo)

    visit "/photos/#{photo.id}"

    expect(page)
  end
end

feature "Photo details page" do
  it "has a p tag for the caption", points: 1 do
    photo = create(:photo)

    visit "/photos/#{photo.id}"

    expect(page).to have_css("p")
  end
end

feature "Photo details page" do
  it "has an img tag for the image", points: 1 do
    photo = create(:photo)

    visit "/photos/#{photo.id}"

    expect(page).to have_css("img")
  end
end

feature "Photo details page" do
  it "displays the correct caption", points: 3 do
    photo = create(:photo)

    visit "/photos/#{photo.id}"

    expect(page).to have_content(photo.caption)
  end
end

feature "Photo details page" do
  it "displays the correct image", points: 3 do
    photo = create(:photo)

    visit "/photos/#{photo.id}"

    expect(page).to have_css("img[src*='#{photo.source}']")
  end
end

feature "Index page" do
  it "has a functional RCAV", points: 1 do
    visit "/photos"

    expect(page)
  end
end

feature "Index page" do
  it "displays multiple photos", points: 1 do
    create_list(:photo, 2)

    visit "/photos"

    expect(page).to have_css("img", minimum: 2)
  end
end

feature "Index page" do
  it "display multiple links to details pages", points: 1 do
    create_list(:photo, 2)

    visit "/photos"

    expect(page).to have_css("a[href*='/photos/']", minimum: 2)
  end
end

feature "Index page" do
  it "display every existing photo", points: 5 do
    photos = create_list(:photo, 5)

    visit "/photos"

    photos.each do |photo|
      expect(page).to have_css("img[src*='#{photo.source}']")
    end
  end
end

feature "Index page" do
  it "displays a link to the details page for every existing photo", points: 5 do
    photos = create_list(:photo, 5)

    visit "/photos"

    photos.each do |photo|
      expect(page).to have_css("img[src*='#{photo.source}']")
    end
  end
end

feature "Home page" do
  it "is the photos index page", points: 3, hint: h("copy_must_match") do
    visit "/"

    expect(page).to have_css("h1", text: "All Photos")
  end
end

feature "New photo form" do
  it "has a functional RCAV", points: 1 do
    visit "/photos/new"

    expect(page)
  end
end

feature "New photo form" do
  it "has a form", points: 1 do
    visit "/photos/new"

    expect(page).to have_css("form", count: 1)
  end
end

feature "New photo form" do
  it "has a label for 'Caption'", points: 1, hint: h("copy_must_match label_for_input") do
    visit "/photos/new"

    expect(page).to have_css("label", text: "Caption")
  end
end

feature "New photo form" do
  it "has a label for 'Image URL'", points: 1, hint: h("copy_must_match label_for_input") do
    visit "/photos/new"

    expect(page).to have_css("label", text: "Image URL")
  end
end

feature "New photo form" do
  it "has two inputs", points: 1, hint: h("label_for_input") do
    visit "/photos/new"

    expect(page).to have_css("input", count: 2)
  end
end

feature "New photo form" do  it "has a button to 'Create Photo'", points: 1, hint: h("copy_must_match") do
    visit "/photos/new"

    expect(page).to have_css("button", text: "Create Photo")
  end
end

feature "New photo form" do
  it "creates a photo when submitted", points: 3, hint: h("button_type") do
    initial_number_of_photos = Photo.count

    visit "/photos/new"

    click_on "Create Photo"

    final_number_of_photos = Photo.count

    expect(final_number_of_photos).to eq(initial_number_of_photos + 1)
  end
end

feature "New photo form" do
  it "saves the caption when submitted", points: 2, hint: h("label_for_input") do
    test_caption = "Photogram test caption, added at time #{Time.now}."

    visit "/photos/new"
    fill_in("Caption", with: test_caption)
    click_on "Create Photo"

    last_photo = Photo.order(created_at: :asc).last
    expect(last_photo.caption).to eq(test_caption)
  end
end

feature "New photo form" do
  it "saves the image URL when submitted", points: 2, hint: h("label_for_input") do
    test_source = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Pluto-01_Stern_03_Pluto_Color_TXT.jpg/240px-Pluto-01_Stern_03_Pluto_Color_TXT.jpg"

    visit "/photos/new"
    fill_in("Image URL", with: test_source)
    click_on "Create Photo"

    last_photo = Photo.order(created_at: :asc).last
    expect(last_photo.source).to eq(test_source)
  end
end

feature "New photo form" do
  it "redirects user to index when submitted", points: 2, hint: h("redirect_vs_render") do
    visit "/photos/new"

    click_on "Create Photo"

    expect(page).to have_current_path("/photos")
  end
end

feature "Delete link" do
  it "removes a row from the table", points: 5 do
    photo = create(:photo)

    visit "/delete_photo/#{photo.id}"

    expect(Photo.exists?(photo.id)).to be false
  end
end

feature "Delete link" do
  it "redirects user to the index page", points: 3, hint: h("redirect_vs_render") do
    photo = create(:photo)

    visit "/delete_photo/#{photo.id}"

    expect(page).to have_current_path("/photos")
  end
end

feature "Edit photo form" do
  it "has a functional RCAV", points: 1 do
    photo = create(:photo)

    visit "/photos/#{photo.id}/edit"

    expect(page)
  end
end

feature "Edit photo form" do
  it "has a form", points: 1 do
    photo = create(:photo)

    visit "/photos/#{photo.id}/edit"

    expect(page).to have_css("form", count: 1)
  end
end

feature "Edit photo form" do
  it "has a label for 'Caption'", points: 1, hint: h("copy_must_match label_for_input") do
    photo = create(:photo)

    visit "/photos/#{photo.id}/edit"

    expect(page).to have_css("label", text: "Caption")
  end
end

feature "Edit photo form" do
  it "has a label for 'Image URL'", points: 1, hint: h("copy_must_match label_for_input") do
    photo = create(:photo)

    visit "/photos/#{photo.id}/edit"

    expect(page).to have_css("label", text: "Image URL")
  end
end

feature "Edit photo form" do
  it "has two inputs", points: 1, hint: h("label_for_input") do
    photo = create(:photo)

    visit "/photos/#{photo.id}/edit"

    expect(page).to have_css("input", count: 2)
  end
end

feature "Edit photo form" do
  it "has a button to 'Update Photo'", points: 1, hint: h("label_for_input") do
    photo = create(:photo)

    visit "/photos/#{photo.id}/edit"

    expect(page).to have_css("button", text: "Update Photo")
  end
end

feature "Edit photo form" do
  it "has caption prepopulated", points: 3, hint: h("value_attribute") do
    photo = create(:photo, caption: "Old caption")

    visit "/photos/#{photo.id}/edit"

    expect(page).to have_css("input[value='Old caption']")
  end
end

feature "Edit photo form" do
  it "has image source prepopulated", points: 3, hint: h("value_attribute") do
    photo = create(:photo, source: "http://old.image/source.jpg")

    visit "/photos/#{photo.id}/edit"

    expect(page).to have_css("input[value='http://old.image/source.jpg']")
  end
end

feature "Edit photo form" do
  it "updates caption when submitted", points: 5, hint: h("label_for_input button_type") do
    photo = create(:photo, caption: "Old caption")
    test_caption = "New caption, added at #{Time.now}"

    visit "/photos/#{photo.id}/edit"
    fill_in "Caption", with: test_caption
    click_on "Update Photo"

    photo_as_revised = Photo.find(photo.id)

    expect(photo_as_revised.caption).to eq(test_caption)
  end
end

feature "Edit photo form" do
  it "updates image source when submitted", points: 5, hint: h("label_for_input button_type") do
    photo = create(:photo, source: "http://old.image/source.jpg")
    test_source = "http://new.image/source_#{Time.now.to_i}.jpg"

    visit "/photos/#{photo.id}/edit"
    fill_in "Image URL", with: test_source
    click_on "Update Photo"

    photo_as_revised = Photo.find(photo.id)

    expect(photo_as_revised.source).to eq(test_source)
  end
end

feature "Edit photo form" do
  it "redirects user to the show page", points: 3, hint: h("embed_vs_interpolate redirect_vs_render") do
    photo = create(:photo)

    visit "/photos/#{photo.id}/edit"
    click_on "Update Photo"

    expect(page).to have_current_path("/photos/#{photo.id}")
  end
end
