require "host_summary_parser/version"

class HostSummaryParser
  def parse(string)
    parsed = ""
    string.split("\n").each do |line|
      line.gsub!(/\(.+\)/,"")
      if line =~ /^(\s*)(\S+)\s*=\s*([\{\[])\s*$/
        parsed << "#{$1}:#{$2} => #{$3}\n"
      elsif line =~ /^(\s*)(\S+)\s*=\s*(.*),\s*$/
        s = $1; l = $2; r = $3
        # insert double quotation
        if r =~ /^".*?"$/
          parsed << "#{s}:#{l} => #{r},\n"
        else
          parsed << "#{s}:#{l} => \"#{r}\",\n"
        end
      else
        parsed << line + "\n"
      end
      parsed.gsub!(/"<unset>"/,"nil")
    end
    eval(parsed)
  end
end
