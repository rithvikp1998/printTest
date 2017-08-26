#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QPrinter>

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent), ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    cpd = new QCpdWindow();
}

void MainWindow::closeEvent(QCloseEvent *event){
    event->accept();
    exit(0);
}
