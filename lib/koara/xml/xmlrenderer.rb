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
        @level++
        indent
        out << "<heading level=\"" + node.value + "\""
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

      #       @Override
      #       public void visit(BlockQuote node) {
      #         level++;
      #         indent();
      #         out.append("<blockquote");
      #         if(node.getChildren() != null && node.getChildren().length > 0) {
      #             out.append(">\n");
      #         level++;
      #         node.childrenAccept(this);
      #         level--;
      #         indent();
      #         out.append("</blockquote>\n");
      #         level--;
      #         } else {
      #             out.append(" />\n");
      #         }
      #         }
      #
      #         @Override
      #         public void visit(ListBlock node) {
      #           level++;
      #           indent();
      #           out.append("<list ordered=\"" + node.isOrdered() + "\">\n");
      #           node.childrenAccept(this);
      #           indent();
      #           out.append("</list>\n");
      #           level--;
      #         }
      #
      #         @Override
      #         public void visit(ListItem node) {
      #           level++;
      #           indent();
      #           out.append("<listitem");
      #           if(node.getNumber() != null) {
      #               out.append(" number=\"" + node.getNumber() + "\"");
      #           }
      #           if(node.getChildren() != null && node.getChildren().length > 0) {
      #               out.append(">\n");
      #           node.childrenAccept(this);
      #           indent();
      #           out.append("</listitem>\n");
      #           } else {
      #               out.append(" />\n");
      #           }
      #           level--;
      #           }
      #
      #           @Override
      #           public void visit(CodeBlock node) {
      #             level++;
      #             indent();
      #             out.append("<codeblock");
      #             if(node.getLanguage() != null) {
      #                 out.append(" language=\"" + escape(node.getLanguage()) + "\"");
      #             }
      #             if(node.getValue() != null && node.getValue().toString().length() > 0) {
      #                 out.append(">");
      #             level++;
      #             out.append(escape(node.getValue().toString()));
      #             level--;
      #             out.append("</codeblock>\n");
      #             } else {
      #                 out.append(" />\n");
      #             }
      #             level--;
      #             }
      #

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

      def visit_blockelement(node)
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

      #             @Override
      #             public void visit(Link node) {
      #               indent();
      #               out.append("<link url=\"" + escapeUrl(node.getValue().toString()) + "\">\n");
      #               level++;
      #               node.childrenAccept(this);
      #               level--;
      #               indent();
      #               out.append("</link>\n");
      #             }
      #
      def visit_text(node)
        indent()
        @out << '<text>'
        @out << escape(node.value)
        @out << "</text>\n"
      end

      #
      #             @Override
      #             public void visit(Strong node) {
      #               indent();
      #               out.append("<strong>\n");
      #               level++;
      #               node.childrenAccept(this);
      #               level--;
      #               indent();
      #               out.append("</strong>\n");
      #             }
      #
      #             @Override
      #             public void visit(Em node) {
      #               indent();
      #               out.append("<em>\n");
      #               level++;
      #               node.childrenAccept(this);
      #               level--;
      #               indent();
      #               out.append("</em>\n");
      #             }
      #
      #             @Override
      #             public void visit(Code node) {
      #               indent();
      #               out.append("<code>\n");
      #               level++;
      #               node.childrenAccept(this);
      #               level--;
      #               indent();
      #               out.append("</code>\n");
      #             }
      #
      #             @Override
      #             public void visit(LineBreak node) {
      #               indent();
      #               out.append("<linebreak />\n");
      #             }
      #
      #             public String escapeUrl(String text) {
      #               return text.replaceAll(" ", "%20")
      #                          .replaceAll("\"", "%22")
      #                          .replaceAll("`", "%60")
      #                          .replaceAll("<", "%3C")
      #                          .replaceAll(">", "%3E")
      #                          .replaceAll("\\[", "%5B")
      #                          .replaceAll("\\]", "%5D")
      #                          .replaceAll("\\\\", "%5C");
      #             }
      #
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
            .gsub('\"', 'quot;')
      end

      def output
        @out.string
      end
    end
  end
end