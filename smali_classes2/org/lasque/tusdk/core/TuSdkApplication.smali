.class public Lorg/lasque/tusdk/core/TuSdkApplication;
.super Landroid/app/Application;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected initPreLoader(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/TuSdkApplication;->initPreLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initPreLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/TuSdk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/TuSdk;

    return-void
.end method

.method public isEnableLog()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/TuSdkApplication;->a:Z

    return v0
.end method

.method public onCreate()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/TuSdkApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkCrashException;->bindExceptionHandler(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public setEnableLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/TuSdkApplication;->a:Z

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/TuSdkApplication;->a:Z

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdk;->enableDebugLog(Z)V

    return-void
.end method
