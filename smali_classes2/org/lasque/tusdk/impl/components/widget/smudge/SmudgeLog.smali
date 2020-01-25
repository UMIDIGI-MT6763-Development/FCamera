.class public Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->e:Ljava/lang/String;

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->b:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->c:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->delete(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->b:I

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->c:I

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 4

    const-string v0, "smudgeCache_%s.tmp"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->e:Ljava/lang/String;

    return-object v0
.end method

.method public hasCached()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->d:Z

    return v0
.end method

.method public declared-synchronized markAsCached()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->d:Z

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
