.class public Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;
.super Ljava/lang/Object;
.source "PhotoSphereHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/util/PhotoSphereHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaMetadata"
.end annotation


# instance fields
.field public final mIsPanorama360:Z

.field public final mUsePanoramaViewer:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    iput-boolean p2, p0, Lcom/freeme/camera/util/PhotoSphereHelper$PanoramaMetadata;->mIsPanorama360:Z

    return-void
.end method
