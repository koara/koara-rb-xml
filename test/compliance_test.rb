# encoding: utf-8
require 'test_helper'
require 'pathname'

class ComplianceTest < MiniTest::Unit::TestCase

  TEST_DIR = 'testsuite'

  Dir.glob("#{TEST_DIR}/input/*").each do |f|
    if (File.directory?("#{f}"))
      folder = File.basename(f).to_s
      Dir.glob("#{TEST_DIR}/input/#{folder}/*.kd").each do |t|
        testcase = File.basename(t)[0..-4].to_s

        define_method("test_#{testcase}") do
          kd = File.read("#{TEST_DIR}/input/#{folder}/#{testcase}.kd")
          html = File.read("#{TEST_DIR}/output/xml/#{folder}/#{testcase}.xml")

          parser = Koara::Parser.new
          document = parser.parse(kd)
          renderer = Koara::Xml::XmlRenderer.new
          document.accept(renderer)

          assert_equal(html, renderer.output)
        end
      end
    end
  end
end