.class public Lorg/lasque/tusdk/core/task/FiltersTempTask;
.super Lorg/lasque/tusdk/core/task/FiltersTaskBase;


# static fields
.field public static final TAG:Ljava/lang/String; = "FiltersTempTask"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;-><init>()V

    const-string v0, "Normal"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/task/FiltersTempTask;->appendFilterCode(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/FiltersTempTask;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/FiltersTempTask;->setInputImage(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected asyncBuildWithFilterName(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/task/FiltersTempTask;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->asyncBuildWithFilterName(Ljava/lang/String;)V

    return-void
.end method

.method public getSampleRootPath()Ljava/io/File;
    .locals 5

    invoke-super {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->getSampleRootPath()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "%s/tempTask/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "lasFilterTemp"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInSeconds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/TuSdkContext;->getAppCacheDir(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/task/FiltersTempTask;->setSampleRootPath(Ljava/io/File;)V

    :cond_1
    invoke-super {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->getSampleRootPath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public isCancelTask()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/task/FiltersTempTask;->a:Z

    return v0
.end method

.method public resetQueues()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/task/FiltersTempTask;->a:Z

    invoke-super {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->resetQueues()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/FiltersTempTask;->getSampleRootPath()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->delete(Ljava/io/File;)V

    return-void
.end method

.method public setInputImage(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->setInputImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/FiltersTempTask;->start()V

    return-void
.end method
