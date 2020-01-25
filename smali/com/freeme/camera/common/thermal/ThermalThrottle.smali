.class public Lcom/freeme/camera/common/thermal/ThermalThrottle;
.super Ljava/lang/Object;
.source "ThermalThrottle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;,
        Lcom/freeme/camera/common/thermal/ThermalThrottle$MainHandler;
    }
.end annotation


# static fields
.field private static final DELAY_1SECONDS:I = 0x3e8

.field private static final DELAY_5SECONDS:I = 0x1388

.field private static final MSG_READ_THERMAL:I = 0x0

.field private static final MSG_UPDATE_TIME:I = 0x1

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final THERMAL_BUFFER_VALUE:I = 0x1

.field private static final THERMAL_THROTTLE_PATH:Ljava/lang/String; = "/proc/driver/cl_cam_status"

.field private static final THERMAL_URGENT_VALUE:I = 0x2

.field private static final UPDATE_TIME_DELAY:I = 0x3e8

.field private static final WAITING_TIME:I = 0x1e


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Lcom/freeme/camera/common/thermal/WarningDialog;

.field protected final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsResumed:Z

.field private mIsShowing:Z

.field private mRes:Landroid/content/res/Resources;

.field private mThermalStatus:I

.field private mWaitingTime:I

.field private mWorkerHandler:Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mThermalStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mIsResumed:Z

    iput-boolean v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mIsShowing:Z

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-direct {v1, p1}, Lcom/freeme/camera/common/thermal/WarningDialog;-><init>(Lcom/freeme/camera/common/app/IApp;)V

    iput-object v1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mAlertDialog:Lcom/freeme/camera/common/thermal/WarningDialog;

    iget-object v1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mRes:Landroid/content/res/Resources;

    const-string v2, "pref_thermal_dialog_title"

    const-string v3, "string"

    iget-object v4, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mRes:Landroid/content/res/Resources;

    const-string v3, "pref_thermal_dialog_content_launch"

    const-string v4, "string"

    iget-object v5, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->getTemperStatus()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mThermalStatus:I

    if-ne v3, v4, :cond_1

    :cond_0
    iput-boolean v4, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mIsShowing:Z

    iget-object v3, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v3, v1, v2}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->showThermalDlg(Landroid/app/Activity;II)V

    :cond_1
    new-instance v1, Lcom/freeme/camera/common/thermal/ThermalThrottle$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle$MainHandler;-><init>(Lcom/freeme/camera/common/thermal/ThermalThrottle;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "ThermalThrottle-thread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;

    iget-object v1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;-><init>(Lcom/freeme/camera/common/thermal/ThermalThrottle;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    const/16 p1, 0x1e

    iput p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWaitingTime:I

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/thermal/ThermalThrottle;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->updateCountDownTime(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/thermal/ThermalThrottle;)I
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->getTemperStatus()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/common/thermal/ThermalThrottle;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mThermalStatus:I

    return p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Lcom/freeme/camera/common/thermal/WarningDialog;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mAlertDialog:Lcom/freeme/camera/common/thermal/WarningDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/common/thermal/ThermalThrottle;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWaitingTime:I

    return p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;

    return-object p0
.end method

.method private getTemperStatus()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/driver/cl_cam_status"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mThermalStatus:I

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/freeme/camera/common/thermal/ThermalThrottle;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v3, "Camera Thermal status :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mThermalStatus:I

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/freeme/camera/common/thermal/ThermalThrottle;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    :goto_1
    iput v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mThermalStatus:I

    iget v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mThermalStatus:I

    return v0

    :goto_2
    iget v2, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mThermalStatus:I

    if-eq v2, v0, :cond_1

    sget-object v2, Lcom/freeme/camera/common/thermal/ThermalThrottle;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera Thermal status :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    throw v1
.end method

.method private showThermalDlg(Landroid/app/Activity;II)V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/thermal/ThermalThrottle$2;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle$2;-><init>(Lcom/freeme/camera/common/thermal/ThermalThrottle;Landroid/app/Activity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x1010355

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateCountDownTime(Landroid/app/Activity;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCountDownTime]mCountDown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWaitingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mThermalStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWaitingTime:I

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWaitingTime:I

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mAlertDialog:Lcom/freeme/camera/common/thermal/WarningDialog;

    iget v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWaitingTime:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/thermal/WarningDialog;->setCountDownTime(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mIsResumed:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/freeme/camera/common/thermal/ThermalThrottle$1;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle$1;-><init>(Lcom/freeme/camera/common/thermal/ThermalThrottle;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mAlertDialog:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-virtual {p1}, Lcom/freeme/camera/common/thermal/WarningDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mAlertDialog:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-virtual {p1}, Lcom/freeme/camera/common/thermal/WarningDialog;->hide()V

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mAlertDialog:Lcom/freeme/camera/common/thermal/WarningDialog;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/thermal/WarningDialog;->setCountDownTime(Ljava/lang/String;)V

    iput v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWaitingTime:I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[destroy]..."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mAlertDialog:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-virtual {v0}, Lcom/freeme/camera/common/thermal/WarningDialog;->uninitView()V

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pause]..."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mIsResumed:Z

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mAlertDialog:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-virtual {v0}, Lcom/freeme/camera/common/thermal/WarningDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mAlertDialog:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-virtual {v0}, Lcom/freeme/camera/common/thermal/WarningDialog;->hide()V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mAlertDialog:Lcom/freeme/camera/common/thermal/WarningDialog;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/thermal/WarningDialog;->setCountDownTime(Ljava/lang/String;)V

    iput v1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWaitingTime:I

    return-void
.end method

.method public resume()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[resume]..."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mIsResumed:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWaitingTime:I

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
