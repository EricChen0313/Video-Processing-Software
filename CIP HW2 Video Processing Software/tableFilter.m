function data_=tableFilter()
t= readtable('subtitles.txt'); %讀取字幕檔, 第一行的內容必須是: start arrow end text
rows= size(t,1); %讀取table行數
for n=1:rows %一次讀一行(row)資料
    str_start=char(t.start(n)); %把字幕起始時間轉換成字串格式
    data_{n,1}=str2num(str_start(5:10)); %進一步轉換成數值格式
    str_end=char(t.xEnd(n)); %把字幕起始時間轉換成字串格式
    data_{n,2}=str2num(str_end(4:9)); %進一步轉換成數值格式
    data_{n,3}=char(t.subtitles(n)); %把字幕轉換成cell格式的字串 
end