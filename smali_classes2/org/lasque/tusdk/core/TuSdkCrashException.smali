.class public Lorg/lasque/tusdk/core/TuSdkCrashException;
.super Ljava/lang/Exception;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/TuSdkCrashException;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/TuSdkCrashException;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/TuSdkCrashException;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/TuSdkCrashException;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "TuSdk"

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/TLog;->enableLogging(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Lorg/lasque/tusdk/core/TuSdkCrashException$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/TuSdkCrashException$1;-><init>(Lorg/lasque/tusdk/core/TuSdkCrashException;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/TuSdkCrashException$1;->start()V

    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public static bindExceptionHandler(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/TuSdkCrashException;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/TuSdkCrashException;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method protected initException()V
    .locals 0

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/TuSdkCrashException;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkCrashException;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
