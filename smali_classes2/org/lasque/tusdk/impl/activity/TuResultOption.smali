.class public abstract Lorg/lasque/tusdk/impl/activity/TuResultOption;
.super Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;-><init>()V

    const/16 v0, 0x5a

    iput v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->d:I

    return-void
.end method

.method private a(Lorg/lasque/tusdk/impl/activity/TuResultFragment;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultOption;->isSaveToTemp()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->setSaveToTemp(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultOption;->isSaveToAlbum()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->setSaveToAlbum(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultOption;->getSaveToAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->setSaveToAlbumName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultOption;->getOutputCompress()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->setOutputCompress(I)V

    return-void
.end method


# virtual methods
.method protected fragmentInstance()Lorg/lasque/tusdk/impl/activity/TuFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/impl/activity/TuFragment;",
            ">()TT;"
        }
    .end annotation

    invoke-super {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->fragmentInstance()Lorg/lasque/tusdk/impl/activity/TuFragment;

    move-result-object v0

    instance-of v1, v0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/lasque/tusdk/impl/activity/TuResultFragment;

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/impl/activity/TuResultOption;->a(Lorg/lasque/tusdk/impl/activity/TuResultFragment;)V

    :cond_0
    return-object v0
.end method

.method public getOutputCompress()I
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->d:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->d:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    iput v1, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->d:I

    :cond_1
    :goto_0
    iget v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->d:I

    return v0
.end method

.method public getSaveToAlbumName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isSaveToAlbum()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->b:Z

    return v0
.end method

.method public isSaveToTemp()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->a:Z

    return v0
.end method

.method public setOutputCompress(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->d:I

    return-void
.end method

.method public setSaveToAlbum(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->b:Z

    return-void
.end method

.method public setSaveToAlbumName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->c:Ljava/lang/String;

    return-void
.end method

.method public setSaveToTemp(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/activity/TuResultOption;->a:Z

    return-void
.end method
