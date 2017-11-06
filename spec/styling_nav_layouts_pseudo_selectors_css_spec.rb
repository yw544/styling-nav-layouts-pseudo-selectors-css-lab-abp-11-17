RSpec.describe "Styling Links with Pseudo Selectors and IDs for Hover States" do
  it 'uses an external stylesheet via a <link> with rel and href attributes' do
    html = load_html("./index.html")

    link_tag = html.search("head link").first
    
    expect(link_tag).to_not be_nil
    expect(link_tag.attr("rel")).to eq("stylesheet")
    expect(link_tag.attr("href")).to eq("style.css")
  end

  it 'adds a :hover pseudo selector for navigation links with "nav a:hover"' do
    css = parse_css_from_file("./style.css")
    nav_a_hover = css["nav a:hover"]

    expect(nav_a_hover).to_not be_nil

    expect(nav_a_hover["text-decoration"]).to match(/underline/i)      
    expect(nav_a_hover["color"]).to match(/#0056b3/)      
  end

  it 'adds a pseudo selector for hover with an underline via #header a:hover' do
    css = parse_css_from_file("./style.css")
    header_a = css["#header a:hover"]

    expect(header_a).to_not be_nil

    expect(header_a["text-decoration"]).to match(/underline/i)      
  end    

  it 'pads the questions div with 20px left and right via an element class selector of "div.questions"' do
    css = parse_css_from_file("./style.css")
    div_questions = css["div.questions"]

    expect(div_questions).to_not be_nil

    if div_questions["padding"]
      expect(div_questions["padding"]).to match(/0\s?20px\s?0\s?20px/i)
    else
      expect(div_questions["padding-top"]).to match(/0/i)
      expect(div_questions["padding-left"]).to match(/20px/i)
      expect(div_questions["padding-right"]).to match(/20px/i)
      expect(div_questions["padding-bottom"]).to match(/0/i)
    end   
  end

  it 'styles h4 in div.questions with a font-size of 30px and bottom margin of 10px via a nested selector of "div.questions h4"' do
    css = parse_css_from_file("./style.css")
    div_questions_h4 = css["div.questions h4"]

    expect(div_questions_h4).to_not be_nil

    expect(div_questions_h4["font-size"]).to match(/30\s?px/i)    
    expect(div_questions_h4["margin-bottom"]).to match(/10\s?px/i)    
  end

  it 'gives paragraphs in div.questions a top margin of 30px via a "div.questions p" selector' do
    css = parse_css_from_file("./style.css")
    div_questions_p = css["div.questions p"]

    expect(div_questions_p).to_not be_nil

    expect(div_questions_p["margin-top"]).to match(/30\s?px/i)        
  end

  it 'makes links with class btn into blue button pills "div.questions a.btn"' do
    css = parse_css_from_file("./style.css")
    a_btn = css["div.questions a.btn"]

    expect(a_btn).to_not be_nil

    expect(a_btn["border-radius"]).to match(/5\s?px/i)   
    expect(a_btn["color"]).to match(/#FFF/i)   
    expect(a_btn["background-color"]).to match(/#007bff/i)   
    expect(a_btn["border-color"]).to match(/#007bff/i)   
    expect(a_btn["text-decoration"]).to match(/none/i)   
    expect(a_btn["padding"]).to match(/18\s?px/i)   
    expect(a_btn["font-size"]).to match(/20\s?px/i)   
  end

  it 'gives links with class btn into blue button pills with a hover state via "div.questions a.btn:hover"' do
    css = parse_css_from_file("./style.css")
    a_btn = css["div.questions a.btn:hover"]

    expect(a_btn).to_not be_nil

    expect(a_btn["background-color"]).to match(/#0069d9/i)   
    expect(a_btn["border-color"]).to match(/#0069d9/i)   
  end
end