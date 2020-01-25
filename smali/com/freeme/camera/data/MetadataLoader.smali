.class public Lcom/freeme/camera/data/MetadataLoader;
.super Ljava/lang/Object;
.source "MetadataLoader.java"


# static fields
.field private static final KEY_METADATA_CACHED:Ljava/lang/String; = "metadata_cached"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isMetadataCached(Lcom/freeme/camera/data/LocalData;)Z
    .locals 1

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "metadata_cached"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadMetadata(Landroid/content/Context;Lcom/freeme/camera/data/LocalData;)Z
    .locals 3

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getLocalDataType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/freeme/camera/data/PanoramaMetadataLoader;->loadPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/freeme/camera/data/RgbzMetadataLoader;->loadRgbzMetadata(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getLocalDataType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lcom/freeme/camera/data/VideoRotationMetadataLoader;->loadRotationMetdata(Lcom/freeme/camera/data/LocalData;)V

    move p0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "metadata_cached"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return p0
.end method
