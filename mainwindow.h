#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "../cpd/headers/cpd.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    QCpdWindow *cpd;
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

public Q_SLOT:
    void closeEvent(QCloseEvent *event) override;

private slots:
    void on_pushButton_clicked();

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
