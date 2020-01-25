.class public Lcom/freeme/camera/data/VideoRotationMetadataLoader;
.super Ljava/lang/Object;
.source "VideoRotationMetadataLoader.java"


# static fields
.field private static final HEIGHT_KEY:Ljava/lang/String; = "metadata_video_height"

.field private static final ROTATE_270:Ljava/lang/String; = "270"

.field private static final ROTATE_90:Ljava/lang/String; = "90"

.field private static final ROTATION_KEY:Ljava/lang/String; = "metadata_video_rotation"

.field private static final WIDTH_KEY:Ljava/lang/String; = "metadata_video_width"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHeight(Lcom/freeme/camera/data/LocalData;)I
    .locals 1

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "metadata_video_height"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static getWidth(Lcom/freeme/camera/data/LocalData;)I
    .locals 1

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "metadata_video_width"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static isRotated(Lcom/freeme/camera/data/LocalData;)Z
    .locals 1

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "metadata_video_rotation"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "90"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "270"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static loadRotationMetdata(Lcom/freeme/camera/data/LocalData;)V
    .locals 4

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "metadata_video_rotation"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "metadata_video_width"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "metadata_video_height"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
