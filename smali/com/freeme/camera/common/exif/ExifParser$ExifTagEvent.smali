.class Lcom/freeme/camera/common/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field mIsRequested:Z

.field mTag:Lcom/freeme/camera/common/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/exif/ExifTag;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/exif/ExifParser$ExifTagEvent;->mTag:Lcom/freeme/camera/common/exif/ExifTag;

    iput-boolean p2, p0, Lcom/freeme/camera/common/exif/ExifParser$ExifTagEvent;->mIsRequested:Z

    return-void
.end method
