.class Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field a:Lorg/lasque/tusdk/core/exif/ExifTag;

.field b:Z


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/exif/ExifTag;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;->a:Lorg/lasque/tusdk/core/exif/ExifTag;

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;->b:Z

    return-void
.end method
