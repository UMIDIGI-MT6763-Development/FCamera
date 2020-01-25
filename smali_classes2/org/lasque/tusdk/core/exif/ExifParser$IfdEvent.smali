.class Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfdEvent"
.end annotation


# instance fields
.field a:I

.field b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;->a:I

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;->b:Z

    return-void
.end method
