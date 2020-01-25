.class public Lcom/freeme/camera/util/PhotoSphereHelper;
.super Ljava/lang/Object;
.source "PhotoSphereHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaViewHelper;,
        Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;
    }
.end annotation


# static fields
.field public static final NOT_PANORAMA:Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;-><init>(ZZ)V

    sput-object v0, Lcom/freeme/camera/util/PhotoSphereHelper;->NOT_PANORAMA:Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModifiedTimeFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getPanoramaHorizontalDrawableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;
    .locals 0

    sget-object p0, Lcom/freeme/camera/util/PhotoSphereHelper;->NOT_PANORAMA:Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;

    return-object p0
.end method

.method public static getPanoramaOrientationDescriptions()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getPanoramaOrientationIndicatorArrayId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getPanoramaOrientationOptionArrayId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getPanoramaVerticalDrawableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getPathFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasLightCycleCapture(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
