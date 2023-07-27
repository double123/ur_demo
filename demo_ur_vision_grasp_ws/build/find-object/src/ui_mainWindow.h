/********************************************************************************
** Form generated from reading UI file 'mainWindow.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDockWidget>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLayout>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QScrollArea>
#include <QtWidgets/QSlider>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "ImageDropWidget.h"
#include "ParametersToolBox.h"
#include "find_object/ObjWidget.h"
#include "utilite/UPlot.h"

QT_BEGIN_NAMESPACE

class Ui_mainWindow
{
public:
    QAction *actionExit;
    QAction *actionAdd_object_from_scene;
    QAction *actionStart_camera;
    QAction *actionStop_camera;
    QAction *actionSave_objects;
    QAction *actionLoad_objects;
    QAction *actionAbout;
    QAction *actionRestore_all_default_settings;
    QAction *actionAdd_objects_from_files;
    QAction *actionLoad_scene_from_file;
    QAction *actionPause_camera;
    QAction *actionCamera_from_video_file;
    QAction *actionRemove_all_objects;
    QAction *actionCamera_from_directory_of_images;
    QAction *actionSave_settings;
    QAction *actionLoad_settings;
    QAction *actionCamera_from_TCP_IP;
    QAction *actionLoad_session;
    QAction *actionSave_session;
    QAction *actionHide_objects_features;
    QAction *actionShow_objects_features;
    QAction *actionLoad_vocabulary;
    QAction *actionSave_vocabulary;
    QWidget *centralwidget;
    QVBoxLayout *verticalLayout_8;
    find_object::ImageDropWidget *imageDrop_scene;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_5;
    QLabel *label_timeRefreshRate;
    QSpacerItem *horizontalSpacer_2;
    QLabel *label_detectorDescriptorType;
    QSpacerItem *horizontalSpacer;
    QLabel *label_nfeatures;
    QLabel *label_15;
    find_object::ObjWidget *imageView_source;
    QHBoxLayout *horizontalLayout;
    QWidget *widget_controls;
    QHBoxLayout *horizontalLayout_4;
    QPushButton *pushButton_play;
    QPushButton *pushButton_pause;
    QPushButton *pushButton_stop;
    QSlider *horizontalSlider_frames;
    QLabel *label_frame;
    QMenuBar *menubar;
    QMenu *menuFile;
    QMenu *menuEdit;
    QMenu *menuView;
    QMenu *menu;
    QDockWidget *dockWidget_parameters;
    QWidget *dockWidgetContents;
    QVBoxLayout *verticalLayout_4;
    find_object::ParametersToolBox *toolBox;
    QWidget *page_1;
    QVBoxLayout *verticalLayout_5;
    QPushButton *pushButton_restoreDefaults;
    QDockWidget *dockWidget_objects;
    QWidget *dockWidgetContents_2;
    QVBoxLayout *verticalLayout_6;
    find_object::ImageDropWidget *imageDrop_objects;
    QVBoxLayout *verticalLayout_3;
    QScrollArea *objects_area;
    QWidget *scrollAreaWidgetContents;
    QVBoxLayout *verticalLayout_objects;
    QSpacerItem *verticalSpacer;
    QHBoxLayout *horizontalLayout_3;
    QPushButton *pushButton_updateObjects;
    QSlider *horizontalSlider_objectsSize;
    QDockWidget *dockWidget_plot;
    QWidget *dockWidgetContents_3;
    QVBoxLayout *verticalLayout_7;
    UPlot *likelihoodPlot;
    QDockWidget *dockWidget_statistics;
    QWidget *dockWidgetContents_4;
    QVBoxLayout *verticalLayout_2;
    QGridLayout *gridLayout;
    QLabel *label_timeIndexing;
    QLabel *label_timeMatching;
    QLabel *label_9;
    QLabel *label_10;
    QLabel *label_16;
    QLabel *label_17;
    QLabel *label_vocabularySize;
    QLabel *label_18;
    QLabel *label_19;
    QLabel *label_ipAddress;
    QLabel *label_port;
    QLabel *label_20;
    QLabel *label_objectsDetected;
    QLabel *label_timeHomographies;
    QLabel *label_21;
    QLabel *label_port_image;
    QLabel *label_22;
    QLabel *label_8;
    QLabel *label_12;
    QLabel *label_minMatchedDistance;
    QLabel *label_13;
    QLabel *label_14;
    QLabel *label_maxMatchedDistance;
    QLabel *label_11;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_timeExtraction;
    QLabel *label_4;
    QLabel *label;
    QLabel *label_timeDetection;
    QLabel *label_7;
    QLabel *label_6;
    QLabel *label_timeTotal;
    QLabel *label_timeSkewAffine;
    QLabel *label_23;
    QLabel *label_24;
    QLabel *label_timeRefreshGUI;
    QLabel *label_25;
    QLabel *label_26;
    QLabel *label_timeSubPix;
    QLabel *label_27;
    QSpacerItem *verticalSpacer_2;

    void setupUi(QMainWindow *mainWindow)
    {
        if (mainWindow->objectName().isEmpty())
            mainWindow->setObjectName(QString::fromUtf8("mainWindow"));
        mainWindow->resize(881, 552);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/images/resources/Find-Object.png"), QSize(), QIcon::Normal, QIcon::Off);
        mainWindow->setWindowIcon(icon);
        actionExit = new QAction(mainWindow);
        actionExit->setObjectName(QString::fromUtf8("actionExit"));
        actionAdd_object_from_scene = new QAction(mainWindow);
        actionAdd_object_from_scene->setObjectName(QString::fromUtf8("actionAdd_object_from_scene"));
        actionStart_camera = new QAction(mainWindow);
        actionStart_camera->setObjectName(QString::fromUtf8("actionStart_camera"));
        actionStop_camera = new QAction(mainWindow);
        actionStop_camera->setObjectName(QString::fromUtf8("actionStop_camera"));
        actionSave_objects = new QAction(mainWindow);
        actionSave_objects->setObjectName(QString::fromUtf8("actionSave_objects"));
        actionLoad_objects = new QAction(mainWindow);
        actionLoad_objects->setObjectName(QString::fromUtf8("actionLoad_objects"));
        actionAbout = new QAction(mainWindow);
        actionAbout->setObjectName(QString::fromUtf8("actionAbout"));
        actionRestore_all_default_settings = new QAction(mainWindow);
        actionRestore_all_default_settings->setObjectName(QString::fromUtf8("actionRestore_all_default_settings"));
        actionAdd_objects_from_files = new QAction(mainWindow);
        actionAdd_objects_from_files->setObjectName(QString::fromUtf8("actionAdd_objects_from_files"));
        actionLoad_scene_from_file = new QAction(mainWindow);
        actionLoad_scene_from_file->setObjectName(QString::fromUtf8("actionLoad_scene_from_file"));
        actionPause_camera = new QAction(mainWindow);
        actionPause_camera->setObjectName(QString::fromUtf8("actionPause_camera"));
        actionCamera_from_video_file = new QAction(mainWindow);
        actionCamera_from_video_file->setObjectName(QString::fromUtf8("actionCamera_from_video_file"));
        actionCamera_from_video_file->setCheckable(true);
        actionRemove_all_objects = new QAction(mainWindow);
        actionRemove_all_objects->setObjectName(QString::fromUtf8("actionRemove_all_objects"));
        actionCamera_from_directory_of_images = new QAction(mainWindow);
        actionCamera_from_directory_of_images->setObjectName(QString::fromUtf8("actionCamera_from_directory_of_images"));
        actionCamera_from_directory_of_images->setCheckable(true);
        actionSave_settings = new QAction(mainWindow);
        actionSave_settings->setObjectName(QString::fromUtf8("actionSave_settings"));
        actionLoad_settings = new QAction(mainWindow);
        actionLoad_settings->setObjectName(QString::fromUtf8("actionLoad_settings"));
        actionCamera_from_TCP_IP = new QAction(mainWindow);
        actionCamera_from_TCP_IP->setObjectName(QString::fromUtf8("actionCamera_from_TCP_IP"));
        actionCamera_from_TCP_IP->setCheckable(true);
        actionLoad_session = new QAction(mainWindow);
        actionLoad_session->setObjectName(QString::fromUtf8("actionLoad_session"));
        actionSave_session = new QAction(mainWindow);
        actionSave_session->setObjectName(QString::fromUtf8("actionSave_session"));
        actionHide_objects_features = new QAction(mainWindow);
        actionHide_objects_features->setObjectName(QString::fromUtf8("actionHide_objects_features"));
        actionShow_objects_features = new QAction(mainWindow);
        actionShow_objects_features->setObjectName(QString::fromUtf8("actionShow_objects_features"));
        actionLoad_vocabulary = new QAction(mainWindow);
        actionLoad_vocabulary->setObjectName(QString::fromUtf8("actionLoad_vocabulary"));
        actionSave_vocabulary = new QAction(mainWindow);
        actionSave_vocabulary->setObjectName(QString::fromUtf8("actionSave_vocabulary"));
        centralwidget = new QWidget(mainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        verticalLayout_8 = new QVBoxLayout(centralwidget);
        verticalLayout_8->setSpacing(0);
        verticalLayout_8->setContentsMargins(0, 0, 0, 0);
        verticalLayout_8->setObjectName(QString::fromUtf8("verticalLayout_8"));
        imageDrop_scene = new find_object::ImageDropWidget(centralwidget);
        imageDrop_scene->setObjectName(QString::fromUtf8("imageDrop_scene"));
        verticalLayout = new QVBoxLayout(imageDrop_scene);
        verticalLayout->setSpacing(0);
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        label_5 = new QLabel(imageDrop_scene);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label_5->setFont(font);

        horizontalLayout_2->addWidget(label_5);

        label_timeRefreshRate = new QLabel(imageDrop_scene);
        label_timeRefreshRate->setObjectName(QString::fromUtf8("label_timeRefreshRate"));

        horizontalLayout_2->addWidget(label_timeRefreshRate);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_2);

        label_detectorDescriptorType = new QLabel(imageDrop_scene);
        label_detectorDescriptorType->setObjectName(QString::fromUtf8("label_detectorDescriptorType"));

        horizontalLayout_2->addWidget(label_detectorDescriptorType);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer);

        label_nfeatures = new QLabel(imageDrop_scene);
        label_nfeatures->setObjectName(QString::fromUtf8("label_nfeatures"));
        label_nfeatures->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout_2->addWidget(label_nfeatures);

        label_15 = new QLabel(imageDrop_scene);
        label_15->setObjectName(QString::fromUtf8("label_15"));

        horizontalLayout_2->addWidget(label_15);


        verticalLayout->addLayout(horizontalLayout_2);

        imageView_source = new find_object::ObjWidget(imageDrop_scene);
        imageView_source->setObjectName(QString::fromUtf8("imageView_source"));

        verticalLayout->addWidget(imageView_source);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        widget_controls = new QWidget(imageDrop_scene);
        widget_controls->setObjectName(QString::fromUtf8("widget_controls"));
        horizontalLayout_4 = new QHBoxLayout(widget_controls);
        horizontalLayout_4->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        pushButton_play = new QPushButton(widget_controls);
        pushButton_play->setObjectName(QString::fromUtf8("pushButton_play"));
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(pushButton_play->sizePolicy().hasHeightForWidth());
        pushButton_play->setSizePolicy(sizePolicy);
        pushButton_play->setMaximumSize(QSize(24, 24));
        QIcon icon1;
        icon1.addFile(QString::fromUtf8(":/images/resources/TheWorkingGroup_video_play.ico"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_play->setIcon(icon1);

        horizontalLayout_4->addWidget(pushButton_play);

        pushButton_pause = new QPushButton(widget_controls);
        pushButton_pause->setObjectName(QString::fromUtf8("pushButton_pause"));
        pushButton_pause->setMaximumSize(QSize(24, 24));
        QIcon icon2;
        icon2.addFile(QString::fromUtf8(":/images/resources/TheWorkingGroup_video_pause.ico"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_pause->setIcon(icon2);

        horizontalLayout_4->addWidget(pushButton_pause);

        pushButton_stop = new QPushButton(widget_controls);
        pushButton_stop->setObjectName(QString::fromUtf8("pushButton_stop"));
        pushButton_stop->setMaximumSize(QSize(24, 24));
        QIcon icon3;
        icon3.addFile(QString::fromUtf8(":/images/resources/TheWorkingGroup_video_stop.ico"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_stop->setIcon(icon3);

        horizontalLayout_4->addWidget(pushButton_stop);

        horizontalSlider_frames = new QSlider(widget_controls);
        horizontalSlider_frames->setObjectName(QString::fromUtf8("horizontalSlider_frames"));
        horizontalSlider_frames->setFocusPolicy(Qt::ClickFocus);
        horizontalSlider_frames->setMinimum(0);
        horizontalSlider_frames->setOrientation(Qt::Horizontal);

        horizontalLayout_4->addWidget(horizontalSlider_frames);

        label_frame = new QLabel(widget_controls);
        label_frame->setObjectName(QString::fromUtf8("label_frame"));

        horizontalLayout_4->addWidget(label_frame);


        horizontalLayout->addWidget(widget_controls);


        verticalLayout->addLayout(horizontalLayout);

        verticalLayout->setStretch(1, 1);

        verticalLayout_8->addWidget(imageDrop_scene);

        mainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(mainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 881, 22));
        menuFile = new QMenu(menubar);
        menuFile->setObjectName(QString::fromUtf8("menuFile"));
        menuEdit = new QMenu(menubar);
        menuEdit->setObjectName(QString::fromUtf8("menuEdit"));
        menuView = new QMenu(menubar);
        menuView->setObjectName(QString::fromUtf8("menuView"));
        menu = new QMenu(menubar);
        menu->setObjectName(QString::fromUtf8("menu"));
        mainWindow->setMenuBar(menubar);
        dockWidget_parameters = new QDockWidget(mainWindow);
        dockWidget_parameters->setObjectName(QString::fromUtf8("dockWidget_parameters"));
        dockWidget_parameters->setMinimumSize(QSize(360, 168));
        dockWidget_parameters->setFloating(false);
        dockWidgetContents = new QWidget();
        dockWidgetContents->setObjectName(QString::fromUtf8("dockWidgetContents"));
        verticalLayout_4 = new QVBoxLayout(dockWidgetContents);
        verticalLayout_4->setSpacing(0);
        verticalLayout_4->setContentsMargins(0, 0, 0, 0);
        verticalLayout_4->setObjectName(QString::fromUtf8("verticalLayout_4"));
        toolBox = new find_object::ParametersToolBox(dockWidgetContents);
        toolBox->setObjectName(QString::fromUtf8("toolBox"));
        page_1 = new QWidget();
        page_1->setObjectName(QString::fromUtf8("page_1"));
        page_1->setGeometry(QRect(0, 0, 348, 76));
        verticalLayout_5 = new QVBoxLayout(page_1);
        verticalLayout_5->setObjectName(QString::fromUtf8("verticalLayout_5"));
        toolBox->addItem(page_1, QString::fromUtf8("Dummy"));

        verticalLayout_4->addWidget(toolBox);

        pushButton_restoreDefaults = new QPushButton(dockWidgetContents);
        pushButton_restoreDefaults->setObjectName(QString::fromUtf8("pushButton_restoreDefaults"));

        verticalLayout_4->addWidget(pushButton_restoreDefaults);

        dockWidget_parameters->setWidget(dockWidgetContents);
        mainWindow->addDockWidget(static_cast<Qt::DockWidgetArea>(2), dockWidget_parameters);
        dockWidget_objects = new QDockWidget(mainWindow);
        dockWidget_objects->setObjectName(QString::fromUtf8("dockWidget_objects"));
        dockWidget_objects->setMinimumSize(QSize(208, 196));
        dockWidgetContents_2 = new QWidget();
        dockWidgetContents_2->setObjectName(QString::fromUtf8("dockWidgetContents_2"));
        verticalLayout_6 = new QVBoxLayout(dockWidgetContents_2);
        verticalLayout_6->setContentsMargins(0, 0, 0, 0);
        verticalLayout_6->setObjectName(QString::fromUtf8("verticalLayout_6"));
        imageDrop_objects = new find_object::ImageDropWidget(dockWidgetContents_2);
        imageDrop_objects->setObjectName(QString::fromUtf8("imageDrop_objects"));
        verticalLayout_3 = new QVBoxLayout(imageDrop_objects);
        verticalLayout_3->setSpacing(0);
        verticalLayout_3->setContentsMargins(0, 0, 0, 0);
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        objects_area = new QScrollArea(imageDrop_objects);
        objects_area->setObjectName(QString::fromUtf8("objects_area"));
        objects_area->setMinimumSize(QSize(150, 0));
        objects_area->setWidgetResizable(true);
        scrollAreaWidgetContents = new QWidget();
        scrollAreaWidgetContents->setObjectName(QString::fromUtf8("scrollAreaWidgetContents"));
        scrollAreaWidgetContents->setGeometry(QRect(0, 0, 222, 425));
        verticalLayout_objects = new QVBoxLayout(scrollAreaWidgetContents);
        verticalLayout_objects->setSpacing(0);
        verticalLayout_objects->setContentsMargins(0, 0, 0, 0);
        verticalLayout_objects->setObjectName(QString::fromUtf8("verticalLayout_objects"));
        verticalSpacer = new QSpacerItem(20, 230, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_objects->addItem(verticalSpacer);

        objects_area->setWidget(scrollAreaWidgetContents);

        verticalLayout_3->addWidget(objects_area);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setSpacing(12);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        pushButton_updateObjects = new QPushButton(imageDrop_objects);
        pushButton_updateObjects->setObjectName(QString::fromUtf8("pushButton_updateObjects"));

        horizontalLayout_3->addWidget(pushButton_updateObjects);

        horizontalSlider_objectsSize = new QSlider(imageDrop_objects);
        horizontalSlider_objectsSize->setObjectName(QString::fromUtf8("horizontalSlider_objectsSize"));
        horizontalSlider_objectsSize->setMinimumSize(QSize(20, 0));
        horizontalSlider_objectsSize->setFocusPolicy(Qt::ClickFocus);
        horizontalSlider_objectsSize->setMaximum(100);
        horizontalSlider_objectsSize->setValue(100);
        horizontalSlider_objectsSize->setOrientation(Qt::Horizontal);

        horizontalLayout_3->addWidget(horizontalSlider_objectsSize);


        verticalLayout_3->addLayout(horizontalLayout_3);


        verticalLayout_6->addWidget(imageDrop_objects);

        dockWidget_objects->setWidget(dockWidgetContents_2);
        mainWindow->addDockWidget(static_cast<Qt::DockWidgetArea>(1), dockWidget_objects);
        dockWidget_plot = new QDockWidget(mainWindow);
        dockWidget_plot->setObjectName(QString::fromUtf8("dockWidget_plot"));
        dockWidgetContents_3 = new QWidget();
        dockWidgetContents_3->setObjectName(QString::fromUtf8("dockWidgetContents_3"));
        verticalLayout_7 = new QVBoxLayout(dockWidgetContents_3);
        verticalLayout_7->setSpacing(0);
        verticalLayout_7->setContentsMargins(0, 0, 0, 0);
        verticalLayout_7->setObjectName(QString::fromUtf8("verticalLayout_7"));
        likelihoodPlot = new UPlot(dockWidgetContents_3);
        likelihoodPlot->setObjectName(QString::fromUtf8("likelihoodPlot"));

        verticalLayout_7->addWidget(likelihoodPlot);

        dockWidget_plot->setWidget(dockWidgetContents_3);
        mainWindow->addDockWidget(static_cast<Qt::DockWidgetArea>(8), dockWidget_plot);
        dockWidget_statistics = new QDockWidget(mainWindow);
        dockWidget_statistics->setObjectName(QString::fromUtf8("dockWidget_statistics"));
        dockWidgetContents_4 = new QWidget();
        dockWidgetContents_4->setObjectName(QString::fromUtf8("dockWidgetContents_4"));
        verticalLayout_2 = new QVBoxLayout(dockWidgetContents_4);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        gridLayout = new QGridLayout();
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setHorizontalSpacing(6);
        gridLayout->setVerticalSpacing(0);
        label_timeIndexing = new QLabel(dockWidgetContents_4);
        label_timeIndexing->setObjectName(QString::fromUtf8("label_timeIndexing"));

        gridLayout->addWidget(label_timeIndexing, 5, 1, 1, 1);

        label_timeMatching = new QLabel(dockWidgetContents_4);
        label_timeMatching->setObjectName(QString::fromUtf8("label_timeMatching"));

        gridLayout->addWidget(label_timeMatching, 6, 1, 1, 1);

        label_9 = new QLabel(dockWidgetContents_4);
        label_9->setObjectName(QString::fromUtf8("label_9"));

        gridLayout->addWidget(label_9, 5, 2, 1, 1);

        label_10 = new QLabel(dockWidgetContents_4);
        label_10->setObjectName(QString::fromUtf8("label_10"));

        gridLayout->addWidget(label_10, 6, 2, 1, 1);

        label_16 = new QLabel(dockWidgetContents_4);
        label_16->setObjectName(QString::fromUtf8("label_16"));

        gridLayout->addWidget(label_16, 0, 2, 1, 1);

        label_17 = new QLabel(dockWidgetContents_4);
        label_17->setObjectName(QString::fromUtf8("label_17"));

        gridLayout->addWidget(label_17, 12, 0, 1, 1);

        label_vocabularySize = new QLabel(dockWidgetContents_4);
        label_vocabularySize->setObjectName(QString::fromUtf8("label_vocabularySize"));

        gridLayout->addWidget(label_vocabularySize, 12, 1, 1, 1);

        label_18 = new QLabel(dockWidgetContents_4);
        label_18->setObjectName(QString::fromUtf8("label_18"));

        gridLayout->addWidget(label_18, 13, 0, 1, 1);

        label_19 = new QLabel(dockWidgetContents_4);
        label_19->setObjectName(QString::fromUtf8("label_19"));

        gridLayout->addWidget(label_19, 14, 0, 1, 1);

        label_ipAddress = new QLabel(dockWidgetContents_4);
        label_ipAddress->setObjectName(QString::fromUtf8("label_ipAddress"));

        gridLayout->addWidget(label_ipAddress, 13, 1, 1, 1);

        label_port = new QLabel(dockWidgetContents_4);
        label_port->setObjectName(QString::fromUtf8("label_port"));

        gridLayout->addWidget(label_port, 14, 1, 1, 1);

        label_20 = new QLabel(dockWidgetContents_4);
        label_20->setObjectName(QString::fromUtf8("label_20"));

        gridLayout->addWidget(label_20, 9, 0, 1, 1);

        label_objectsDetected = new QLabel(dockWidgetContents_4);
        label_objectsDetected->setObjectName(QString::fromUtf8("label_objectsDetected"));

        gridLayout->addWidget(label_objectsDetected, 9, 1, 1, 1);

        label_timeHomographies = new QLabel(dockWidgetContents_4);
        label_timeHomographies->setObjectName(QString::fromUtf8("label_timeHomographies"));

        gridLayout->addWidget(label_timeHomographies, 7, 1, 1, 1);

        label_21 = new QLabel(dockWidgetContents_4);
        label_21->setObjectName(QString::fromUtf8("label_21"));

        gridLayout->addWidget(label_21, 15, 0, 1, 1);

        label_port_image = new QLabel(dockWidgetContents_4);
        label_port_image->setObjectName(QString::fromUtf8("label_port_image"));

        gridLayout->addWidget(label_port_image, 15, 1, 1, 1);

        label_22 = new QLabel(dockWidgetContents_4);
        label_22->setObjectName(QString::fromUtf8("label_22"));

        gridLayout->addWidget(label_22, 3, 0, 1, 1);

        label_8 = new QLabel(dockWidgetContents_4);
        label_8->setObjectName(QString::fromUtf8("label_8"));

        gridLayout->addWidget(label_8, 5, 0, 1, 1);

        label_12 = new QLabel(dockWidgetContents_4);
        label_12->setObjectName(QString::fromUtf8("label_12"));

        gridLayout->addWidget(label_12, 7, 2, 1, 1);

        label_minMatchedDistance = new QLabel(dockWidgetContents_4);
        label_minMatchedDistance->setObjectName(QString::fromUtf8("label_minMatchedDistance"));

        gridLayout->addWidget(label_minMatchedDistance, 10, 1, 1, 1);

        label_13 = new QLabel(dockWidgetContents_4);
        label_13->setObjectName(QString::fromUtf8("label_13"));

        gridLayout->addWidget(label_13, 10, 0, 1, 1);

        label_14 = new QLabel(dockWidgetContents_4);
        label_14->setObjectName(QString::fromUtf8("label_14"));

        gridLayout->addWidget(label_14, 11, 0, 1, 1);

        label_maxMatchedDistance = new QLabel(dockWidgetContents_4);
        label_maxMatchedDistance->setObjectName(QString::fromUtf8("label_maxMatchedDistance"));

        gridLayout->addWidget(label_maxMatchedDistance, 11, 1, 1, 1);

        label_11 = new QLabel(dockWidgetContents_4);
        label_11->setObjectName(QString::fromUtf8("label_11"));

        gridLayout->addWidget(label_11, 7, 0, 1, 1);

        label_2 = new QLabel(dockWidgetContents_4);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        gridLayout->addWidget(label_2, 4, 0, 1, 1);

        label_3 = new QLabel(dockWidgetContents_4);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout->addWidget(label_3, 1, 2, 1, 1);

        label_timeExtraction = new QLabel(dockWidgetContents_4);
        label_timeExtraction->setObjectName(QString::fromUtf8("label_timeExtraction"));

        gridLayout->addWidget(label_timeExtraction, 4, 1, 1, 1);

        label_4 = new QLabel(dockWidgetContents_4);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        gridLayout->addWidget(label_4, 4, 2, 1, 1);

        label = new QLabel(dockWidgetContents_4);
        label->setObjectName(QString::fromUtf8("label"));

        gridLayout->addWidget(label, 1, 0, 1, 1);

        label_timeDetection = new QLabel(dockWidgetContents_4);
        label_timeDetection->setObjectName(QString::fromUtf8("label_timeDetection"));

        gridLayout->addWidget(label_timeDetection, 1, 1, 1, 1);

        label_7 = new QLabel(dockWidgetContents_4);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        gridLayout->addWidget(label_7, 6, 0, 1, 1);

        label_6 = new QLabel(dockWidgetContents_4);
        label_6->setObjectName(QString::fromUtf8("label_6"));

        gridLayout->addWidget(label_6, 0, 0, 1, 1);

        label_timeTotal = new QLabel(dockWidgetContents_4);
        label_timeTotal->setObjectName(QString::fromUtf8("label_timeTotal"));

        gridLayout->addWidget(label_timeTotal, 0, 1, 1, 1);

        label_timeSkewAffine = new QLabel(dockWidgetContents_4);
        label_timeSkewAffine->setObjectName(QString::fromUtf8("label_timeSkewAffine"));

        gridLayout->addWidget(label_timeSkewAffine, 3, 1, 1, 1);

        label_23 = new QLabel(dockWidgetContents_4);
        label_23->setObjectName(QString::fromUtf8("label_23"));

        gridLayout->addWidget(label_23, 3, 2, 1, 1);

        label_24 = new QLabel(dockWidgetContents_4);
        label_24->setObjectName(QString::fromUtf8("label_24"));

        gridLayout->addWidget(label_24, 8, 0, 1, 1);

        label_timeRefreshGUI = new QLabel(dockWidgetContents_4);
        label_timeRefreshGUI->setObjectName(QString::fromUtf8("label_timeRefreshGUI"));

        gridLayout->addWidget(label_timeRefreshGUI, 8, 1, 1, 1);

        label_25 = new QLabel(dockWidgetContents_4);
        label_25->setObjectName(QString::fromUtf8("label_25"));

        gridLayout->addWidget(label_25, 8, 2, 1, 1);

        label_26 = new QLabel(dockWidgetContents_4);
        label_26->setObjectName(QString::fromUtf8("label_26"));

        gridLayout->addWidget(label_26, 2, 0, 1, 1);

        label_timeSubPix = new QLabel(dockWidgetContents_4);
        label_timeSubPix->setObjectName(QString::fromUtf8("label_timeSubPix"));

        gridLayout->addWidget(label_timeSubPix, 2, 1, 1, 1);

        label_27 = new QLabel(dockWidgetContents_4);
        label_27->setObjectName(QString::fromUtf8("label_27"));

        gridLayout->addWidget(label_27, 2, 2, 1, 1);

        gridLayout->setColumnStretch(0, 1);

        verticalLayout_2->addLayout(gridLayout);

        verticalSpacer_2 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_2->addItem(verticalSpacer_2);

        dockWidget_statistics->setWidget(dockWidgetContents_4);
        mainWindow->addDockWidget(static_cast<Qt::DockWidgetArea>(2), dockWidget_statistics);

        menubar->addAction(menuFile->menuAction());
        menubar->addAction(menuEdit->menuAction());
        menubar->addAction(menuView->menuAction());
        menubar->addAction(menu->menuAction());
        menuFile->addAction(actionLoad_session);
        menuFile->addAction(actionSave_session);
        menuFile->addSeparator();
        menuFile->addAction(actionLoad_objects);
        menuFile->addAction(actionSave_objects);
        menuFile->addSeparator();
        menuFile->addAction(actionLoad_vocabulary);
        menuFile->addAction(actionSave_vocabulary);
        menuFile->addSeparator();
        menuFile->addAction(actionLoad_settings);
        menuFile->addAction(actionSave_settings);
        menuFile->addSeparator();
        menuFile->addAction(actionExit);
        menuEdit->addAction(actionAdd_object_from_scene);
        menuEdit->addAction(actionAdd_objects_from_files);
        menuEdit->addSeparator();
        menuEdit->addAction(actionLoad_scene_from_file);
        menuEdit->addAction(actionCamera_from_directory_of_images);
        menuEdit->addAction(actionCamera_from_video_file);
        menuEdit->addAction(actionCamera_from_TCP_IP);
        menuEdit->addSeparator();
        menuEdit->addAction(actionStart_camera);
        menuEdit->addAction(actionPause_camera);
        menuEdit->addAction(actionStop_camera);
        menuEdit->addSeparator();
        menuEdit->addAction(actionRestore_all_default_settings);
        menuEdit->addSeparator();
        menuEdit->addAction(actionRemove_all_objects);
        menuView->addAction(actionHide_objects_features);
        menuView->addAction(actionShow_objects_features);
        menuView->addSeparator();
        menu->addAction(actionAbout);

        retranslateUi(mainWindow);

        toolBox->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(mainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *mainWindow)
    {
        mainWindow->setWindowTitle(QApplication::translate("mainWindow", "Find-Object", nullptr));
        actionExit->setText(QApplication::translate("mainWindow", "Exit", nullptr));
        actionAdd_object_from_scene->setText(QApplication::translate("mainWindow", "Add object from scene...", nullptr));
        actionStart_camera->setText(QApplication::translate("mainWindow", "Start camera", nullptr));
        actionStop_camera->setText(QApplication::translate("mainWindow", "Stop camera", nullptr));
        actionSave_objects->setText(QApplication::translate("mainWindow", "Save objects...", nullptr));
        actionLoad_objects->setText(QApplication::translate("mainWindow", "Load objects...", nullptr));
        actionAbout->setText(QApplication::translate("mainWindow", "About...", nullptr));
        actionRestore_all_default_settings->setText(QApplication::translate("mainWindow", "Restore all default settings", nullptr));
        actionAdd_objects_from_files->setText(QApplication::translate("mainWindow", "Add objects from files...", nullptr));
        actionLoad_scene_from_file->setText(QApplication::translate("mainWindow", "Camera from single file...", nullptr));
        actionPause_camera->setText(QApplication::translate("mainWindow", "Pause camera", nullptr));
        actionCamera_from_video_file->setText(QApplication::translate("mainWindow", "Camera from video file...", nullptr));
        actionRemove_all_objects->setText(QApplication::translate("mainWindow", "Remove all objects", nullptr));
        actionCamera_from_directory_of_images->setText(QApplication::translate("mainWindow", "Camera from directory of images...", nullptr));
        actionSave_settings->setText(QApplication::translate("mainWindow", "Save settings...", nullptr));
        actionLoad_settings->setText(QApplication::translate("mainWindow", "Load settings...", nullptr));
        actionCamera_from_TCP_IP->setText(QApplication::translate("mainWindow", "Camera from TCP/IP...", nullptr));
        actionLoad_session->setText(QApplication::translate("mainWindow", "Load session...", nullptr));
        actionSave_session->setText(QApplication::translate("mainWindow", "Save session...", nullptr));
        actionHide_objects_features->setText(QApplication::translate("mainWindow", "Hide objects features", nullptr));
        actionShow_objects_features->setText(QApplication::translate("mainWindow", "Show objects features", nullptr));
        actionLoad_vocabulary->setText(QApplication::translate("mainWindow", "Load vocabulary...", nullptr));
        actionSave_vocabulary->setText(QApplication::translate("mainWindow", "Save vocabulary...", nullptr));
        label_5->setText(QApplication::translate("mainWindow", "Camera", nullptr));
        label_timeRefreshRate->setText(QApplication::translate("mainWindow", " (0 Hz - 0 Hz)", nullptr));
        label_detectorDescriptorType->setText(QString());
        label_nfeatures->setText(QApplication::translate("mainWindow", "0", nullptr));
        label_15->setText(QApplication::translate("mainWindow", " features", nullptr));
        pushButton_play->setText(QString());
        pushButton_pause->setText(QString());
        pushButton_stop->setText(QString());
        label_frame->setText(QApplication::translate("mainWindow", "0", nullptr));
        menuFile->setTitle(QApplication::translate("mainWindow", "File", nullptr));
        menuEdit->setTitle(QApplication::translate("mainWindow", "Edit", nullptr));
        menuView->setTitle(QApplication::translate("mainWindow", "View", nullptr));
        menu->setTitle(QApplication::translate("mainWindow", "?", nullptr));
        dockWidget_parameters->setWindowTitle(QApplication::translate("mainWindow", "Parameters", nullptr));
        toolBox->setItemText(toolBox->indexOf(page_1), QApplication::translate("mainWindow", "Dummy", nullptr));
        pushButton_restoreDefaults->setText(QApplication::translate("mainWindow", "Restore defaults", nullptr));
        dockWidget_objects->setWindowTitle(QApplication::translate("mainWindow", "Objects", nullptr));
        pushButton_updateObjects->setText(QApplication::translate("mainWindow", "Update objects", nullptr));
        dockWidget_plot->setWindowTitle(QApplication::translate("mainWindow", "Likelihood", nullptr));
        dockWidget_statistics->setWindowTitle(QApplication::translate("mainWindow", "Statistics", nullptr));
        label_timeIndexing->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_timeMatching->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_9->setText(QApplication::translate("mainWindow", "ms", nullptr));
        label_10->setText(QApplication::translate("mainWindow", "ms", nullptr));
        label_16->setText(QApplication::translate("mainWindow", "ms", nullptr));
        label_17->setText(QApplication::translate("mainWindow", "Vocabulary size", nullptr));
        label_vocabularySize->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_18->setText(QApplication::translate("mainWindow", "IP address", nullptr));
        label_19->setText(QApplication::translate("mainWindow", "Output detection port", nullptr));
        label_ipAddress->setText(QApplication::translate("mainWindow", "0.0.0.0", nullptr));
        label_port->setText(QApplication::translate("mainWindow", "0", nullptr));
        label_20->setText(QApplication::translate("mainWindow", "Objects detected", nullptr));
        label_objectsDetected->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_timeHomographies->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_21->setText(QApplication::translate("mainWindow", "Input image port", nullptr));
        label_port_image->setText(QApplication::translate("mainWindow", "-", nullptr));
        label_22->setText(QApplication::translate("mainWindow", "Affine transforms", nullptr));
        label_8->setText(QApplication::translate("mainWindow", "Descriptors indexing", nullptr));
        label_12->setText(QApplication::translate("mainWindow", "ms", nullptr));
        label_minMatchedDistance->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_13->setText(QApplication::translate("mainWindow", "Min matched distance", nullptr));
        label_14->setText(QApplication::translate("mainWindow", "Max matched distance", nullptr));
        label_maxMatchedDistance->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_11->setText(QApplication::translate("mainWindow", "Homograhies", nullptr));
        label_2->setText(QApplication::translate("mainWindow", "Descriptors extraction", nullptr));
        label_3->setText(QApplication::translate("mainWindow", "ms", nullptr));
        label_timeExtraction->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_4->setText(QApplication::translate("mainWindow", "ms", nullptr));
        label->setText(QApplication::translate("mainWindow", "Features detection", nullptr));
        label_timeDetection->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_7->setText(QApplication::translate("mainWindow", "Descriptors matching", nullptr));
        label_6->setText(QApplication::translate("mainWindow", "Total", nullptr));
        label_timeTotal->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_timeSkewAffine->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_23->setText(QApplication::translate("mainWindow", "ms", nullptr));
        label_24->setText(QApplication::translate("mainWindow", "Refresh GUI", nullptr));
        label_timeRefreshGUI->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_25->setText(QApplication::translate("mainWindow", "ms", nullptr));
        label_26->setText(QApplication::translate("mainWindow", "Features sub pixel refining", nullptr));
        label_timeSubPix->setText(QApplication::translate("mainWindow", "000", nullptr));
        label_27->setText(QApplication::translate("mainWindow", "ms", nullptr));
    } // retranslateUi

};

namespace Ui {
    class mainWindow: public Ui_mainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
