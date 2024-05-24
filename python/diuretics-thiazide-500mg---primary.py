# Evangelos Kontopantelis, David A Springate, David Reeves, Darren M. Aschroff, Martin Rutter, Iain Buchan, Tim Doran, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"19055","system":"gprdproduct"},{"code":"1288","system":"gprdproduct"},{"code":"13363","system":"gprdproduct"},{"code":"25505","system":"gprdproduct"},{"code":"9783","system":"gprdproduct"},{"code":"11384","system":"gprdproduct"},{"code":"13525","system":"gprdproduct"},{"code":"12110","system":"gprdproduct"},{"code":"16632","system":"gprdproduct"},{"code":"21873","system":"gprdproduct"},{"code":"31708","system":"gprdproduct"},{"code":"34825","system":"gprdproduct"},{"code":"34449","system":"gprdproduct"},{"code":"17720","system":"gprdproduct"},{"code":"32094","system":"gprdproduct"},{"code":"581","system":"gprdproduct"},{"code":"8836","system":"gprdproduct"},{"code":"34034","system":"gprdproduct"},{"code":"14738","system":"gprdproduct"},{"code":"4540","system":"gprdproduct"},{"code":"26741","system":"gprdproduct"},{"code":"6437","system":"gprdproduct"},{"code":"3517","system":"gprdproduct"},{"code":"7961","system":"gprdproduct"},{"code":"1297","system":"gprdproduct"},{"code":"12547","system":"gprdproduct"},{"code":"45916","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diuretics-thiazide-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diuretics-thiazide-500mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diuretics-thiazide-500mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diuretics-thiazide-500mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
