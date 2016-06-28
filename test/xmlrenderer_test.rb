require 'koara'
require 'koara/xml/xmlrenderer'
require 'minitest/autorun'

class XmlRendererTest < MiniTest::Unit::TestCase

  def setup
    parser = Koara::Parser.new
    @document = parser.parse('Test')
    @renderer = Koara::Xml::XmlRenderer.new()
  end

  def test_basic
    expected = "<document>\n"
    expected << "  <paragraph>\n"
    expected << "    <text>Test</text>\n"
    expected << "  </paragraph>\n"
    expected << '</document>'

    @document.accept(@renderer)
    assert_equal(expected, @renderer.output)
  end

  def test_no_partial_result
    expected = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
    expected << "<document>\n"
    expected << "  <paragraph>\n"
    expected << "    <text>Test</text>\n"
    expected << "  </paragraph>\n"
    expected << "</document>"

    @renderer.declaration_tag = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
    @document.accept(@renderer)
    assert_equal(expected, @renderer.output)
  end

end