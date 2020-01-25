.class public Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->setFilePath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFileUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->setFileUri(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static create(Landroid/net/Uri;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->b:Landroid/net/Uri;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->a:Ljava/lang/String;

    return-void
.end method

.method public setFileUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->b:Landroid/net/Uri;

    return-void
.end method
