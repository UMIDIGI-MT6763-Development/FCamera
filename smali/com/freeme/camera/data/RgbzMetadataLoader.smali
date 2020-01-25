.class public Lcom/freeme/camera/data/RgbzMetadataLoader;
.super Ljava/lang/Object;
.source "RgbzMetadataLoader.java"


# static fields
.field private static final KEY_RGBZ_INFO:Ljava/lang/String; = "metadata_key_rgbz_info"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasRGBZData(Lcom/freeme/camera/data/LocalData;)Z
    .locals 1

    invoke-interface {p0}, Lcom/freeme/camera/data/LocalData;->getMetadata()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "metadata_key_rgbz_info"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadRgbzMetadata(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/freeme/camera/data/RefocusHelper;->isRGBZ(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "metadata_key_rgbz_info"

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
