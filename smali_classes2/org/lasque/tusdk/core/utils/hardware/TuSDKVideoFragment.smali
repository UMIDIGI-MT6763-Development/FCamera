.class public Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeFragment(Ljava/io/File;FF)Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;-><init>()V

    iput-object p0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->a:Ljava/io/File;

    iput p1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->b:F

    iput p2, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->c:F

    return-object v0
.end method


# virtual methods
.method public clearVideoFile()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->a:Ljava/io/File;

    return-void
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->c:F

    return v0
.end method

.method public getStart()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->b:F

    return v0
.end method

.method public getVideoFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->a:Ljava/io/File;

    return-object v0
.end method

.method public setDuration(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->c:F

    return-void
.end method

.method public setStart(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->b:F

    return-void
.end method

.method public setVideoFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoFragment;->a:Ljava/io/File;

    return-void
.end method
