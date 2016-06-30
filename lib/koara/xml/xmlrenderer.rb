# encoding: utf-8
module Koara
  module Xml
    class XmlRenderer
      attr_accessor :declaration_tag

      def visit_document(node)
        @level = 0
        @out = StringIO.new
        if @declaration_tag
          @out << @declaration_tag + "\n"
        end
        if node.children && node.children.length > 0
          @out << "<document>\n"
          node.children_accept(self)
          @out << '</document>'
        else
          @out << '<document />'
        end
      end

      def visit_heading(node)
        @level += 1
        indent
        @out << "<heading level=\"#{node.value}\""
        if node.children && node.children.length > 0
          @out << ">\n"
          @level += 1
          node.children_accept(self)
          @level -= 1
          indent
          @out << "</heading>\n"
        else
          @out << " />\n"
        end
        @level -= 1
      end

      def visit_blockquote(node)
        @level+=1
        indent
        @out << '<blockquote'
        if node.children && node.children.length > 0
          @out << ">\n"
          @level+=1
          node.children_accept(self)
          @level-=1
          indent
          @out << "</blockquote>\n"
          @level-=1
        else
          @out << " />\n"
        end
      end

      def visit_list_block(node)
        @level += 1
        indent
        @out << "<list ordered=\"#{node.ordered}\">\n"
        node.children_accept(self)
        indent
        @out << "</list>\n"
        @level -= 1
      end

      def visit_list_item(node)
        @level += 1
        indent
        @out << "<listitem"
        if node.number
          @out << " number=\"#{node.number}\"";
        end
        if node.children && node.children.length > 0
          @out << ">\n"
          node.children_accept(self)
          indent
          @out << "</listitem>\n"
        else
          @out << " />\n"
        end
        @level -= 1
      end

      def visit_codeblock(node)
        @level += 1
        indent
        @out << "<codeblock"
        if node.language
          @out << " language=\"#{escape(node.language)}\""
        end
        if node.value && node.value.length > 0
          @out << ">"
          @level += 1
          @out << escape(node.value)
          @level -= 1
          @out << "</codeblock>\n"
        else
          @out << " />\n"
        end
        @level -= 1
      end

      def visit_paragraph(node)
        @level += 1
        indent
        @out << "<paragraph>\n"
        @level += 1
        node.children_accept(self)
        @level -= 1
        indent
        @out << "</paragraph>\n"
        @level -= 1
      end

      def visit_block_element(node)
      end

      def visit_image(node)
        indent
        @out << "<image url=\"" + escape_url(node.value) + "\">\n"
        @level += 1
        node.children_accept(self)
        @level -= 1
        indent()
        @out << "</image>\n"
      end

      def visit_link(node)
        indent
        @out << "<link url=\"#{escape_url(node.value)}\">\n"
        @level += 1
        node.children_accept(self)
        @level -= 1
        indent
        @out << "</link>\n"
      end

      def visit_text(node)
        indent()
        @out << '<text>'
        @out << escape(node.value)
        @out << "</text>\n"
      end

      def visit_strong(node)
        indent
        @out << "<strong>\n"
        @level += 1
        node.children_accept(self)
        @level -= 1
        indent
        @out << "</strong>\n"
      end

      def visit_em(node)
        indent
        @out << "<em>\n"
        @level += 1
        node.children_accept(self)
        @level -= 1
        indent
        @out << "</em>\n"
      end

      def visit_code(node)
        indent
        @out << "<code>\n"
        @level += 1
        node.children_accept(self)
        @level -= 1
        indent
        @out << "</code>\n"
      end

      def visit_linebreak(node)
        indent
        @out << "<linebreak />\n"
      end

      def escape_url(text)
        return text.gsub(' ', '%20')
                   .gsub("\"", '%22')
                   .gsub('`', '%60')
                   .gsub('<', '%3C')
                   .gsub('>', '%3E')
                   .gsub('[', '%5B')
                   .gsub(']', '%5D')
                   .gsub("\\", '%5C')
      end

      def indent
        repeat = @level * 2
        repeat.times {
          @out << ' '
        }
      end

      def escape(text)
        text.gsub('&', '&amp;')
            .gsub('<', '&lt;')
            .gsub('>', '&gt;')
            .gsub('"', '&quot;')
      end

      def output
        @out.string
      end
    end
  end
end