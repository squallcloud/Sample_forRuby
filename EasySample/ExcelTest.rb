require 'win32ole'
require 'wrap_excel'

$xl_path = './sample.xlsx'

def WrapXlTest()
  WrapExcel::Book.open($xl_path, :read_only => false) do |book|
    book.each {|sheet|
      sheet.each do |cell|
        if cell.value != nil then
          # print "#{cell.value}\n"
          # print "#{cell.value.class}\n"
          if cell.value.class == String then
            cell.value = cell.value.gsub('hoge', 'foo')
          end
        end
      end
    }
    book.save
  end
end

WrapXlTest()

# def OleTest()
#   fso = WIN32OLE.new('Scripting.FileSystemObject')
#   excel = WIN32OLE.new('Excel.Application')
#   file = fso.GetAbsolutePathName("#{$xl_path}")
#   # file = './sample.xlsx'
#   excel.visible = false
#   excel.displayAlerts = false

#   book = excel.Workbooks.Open(file)
#   sheets = book.Worksheets()
#   sheets.each {|sheet|
#     sheet.UsedRange.Rows.each do |row|
#       # セルごとに処理
#       row.Columns.each do |cell|
#         if cell.value.class == String then
#           cell.value = cell.value.gsub('hoge', 'foo')
#         end
#       end
#     end
#   }

#   book.save
#   book.close
#   excel.Quit
# end

# OleTest()