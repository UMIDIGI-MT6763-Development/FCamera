.class public final enum Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/exif/ExifInterface$Flash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlashFired"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NO:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

.field public static final enum YES:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    const-string v1, "NO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;->NO:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    const-string v1, "YES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;->YES:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;->NO:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;->YES:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;->a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;->a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$FlashFired;

    return-object v0
.end method
