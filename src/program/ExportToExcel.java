
package program;

import java.awt.Desktop;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.swing.JFileChooser;
import javax.swing.JTable;
import javax.swing.filechooser.FileNameExtensionFilter;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

public class ExportToExcel {

    public void exportarExcel(JTable t) throws IOException {
        JFileChooser chooser = new JFileChooser();
        FileNameExtensionFilter filter = new FileNameExtensionFilter("File Excel", "xls");
        chooser.setFileFilter(filter);
        chooser.setDialogTitle("Simpan File");
        chooser.setAcceptAllFileFilterUsed(false);
        
        
        if (chooser.showSaveDialog(null) == JFileChooser.APPROVE_OPTION) {
            String export = chooser.getSelectedFile().toString().concat(".xls");
            try {
                File simpanExcel = new File(export);
                if (simpanExcel.exists()) {
                    simpanExcel.delete();
                }
                simpanExcel.createNewFile();
                Workbook book = new HSSFWorkbook();
                FileOutputStream simpan = new FileOutputStream(simpanExcel);
                Sheet lembarExcel = book.createSheet("Lembar Kerja 1");
                lembarExcel.setDisplayGridlines(false);
                for (int f = 0; f < t.getRowCount(); f++) {
                    Row file = lembarExcel.createRow(f);
                    for (int c = 0; c < t.getColumnCount(); c++) {
                        Cell cell = file.createCell(c);
                        if (f == 0) {
                            cell.setCellValue(t.getColumnName(c));
                        }
                    }
                }
                int baris = 1;
                for (int f = 0; f < t.getRowCount(); f++) {
                    Row file = lembarExcel.createRow(baris);
                    baris++;
                    for (int c = 0; c < t.getColumnCount(); c++) {
                        Cell cell = file.createCell(c);
                        if (t.getValueAt(f, c) instanceof Double) {
                            cell.setCellValue(Double.parseDouble(t.getValueAt(f, c).toString()));
                        } else if (t.getValueAt(f, c) instanceof Float) {
                            cell.setCellValue(Float.parseFloat((String) t.getValueAt(f, c)));
                        } else {
                            cell.setCellValue(String.valueOf(t.getValueAt(f, c)));
                        }
                    }
                }
                book.write(simpan);
                simpan.close();
                Desktop.getDesktop().open(simpanExcel);
            } catch (IOException | NumberFormatException e) {
                throw e;
            }
        }
    }

}
