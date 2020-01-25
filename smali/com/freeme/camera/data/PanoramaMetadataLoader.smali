.class public Lcom/freeme/camera/data/PanoramaMetadataLoader;
.super Ljava/lang/Object;
.source "PanoramaMetadataLoader.java"


# static fields
.field private static final KEY_IS_PANORAMA:Ljava/lang/String; = "metadata_key_is_panorama"

.field private static final KEY_PANORAMA_360:Ljava/lang/String; = "metadata_key_panorama_360"

.field private static final KEY_USE_PANORAMA_VIEWER:Ljava/lang/String; = "metadata_key_panorama_viewer"

.field private static final TAG:Ljava/lang/String; = "PanoramaMetadataLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPanorama(Lcom/freeme/camera/data/LocalData;)Z
    .locals 1

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "metadata_key_is_panorama"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPanorama360(Lcom/freeme/camera/data/LocalData;)Z
    .locals 1

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "metadata_key_panorama_360"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPanoramaAndUseViewer(Lcom/freeme/camera/data/LocalData;)Z
    .locals 1

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "metadata_key_panorama_viewer"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/freeme/camera/util/PhotoSphereHelper;->getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/freeme/camera/util/PhotoSphereHelper;->NOT_PANORAMA:Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;

    if-eq p0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "metadata_key_is_panorama"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "metadata_key_panorama_360"

    iget-boolean v0, p0, Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;->mIsPanorama360:Z

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "metadata_key_panorama_viewer"

    iget-boolean p0, p0, Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/freeme/camera/data/PanoramaMetadataLoader;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadPanoramaMetadata: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
