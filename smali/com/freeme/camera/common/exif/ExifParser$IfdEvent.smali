.class Lcom/freeme/camera/common/exif/ExifParser$IfdEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfdEvent"
.end annotation


# instance fields
.field mIfd:I

.field mIsRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freeme/camera/common/exif/ExifParser$IfdEvent;->mIfd:I

    iput-boolean p2, p0, Lcom/freeme/camera/common/exif/ExifParser$IfdEvent;->mIsRequested:Z

    return-void
.end method
