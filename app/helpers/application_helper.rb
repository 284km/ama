module ApplicationHelper
  def markdown(value)
    processor = Qiita::Markdown::Processor.new(markdown: { footnotes: false })
    processor.call(value)[:output].to_s.html_safe
  end

  def markdown_summary(value, length: 30)
    processor = Qiita::Markdown::SummaryProcessor.new(truncate: { length: length })
    processor.call(value)[:output].to_s.html_safe
  end
end
