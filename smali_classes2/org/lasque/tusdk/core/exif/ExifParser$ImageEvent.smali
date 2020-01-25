.class Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEvent"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;->a:I

    iput p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;->b:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;->b:I

    iput p2, p0, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;->a:I

    return-void
.end method
