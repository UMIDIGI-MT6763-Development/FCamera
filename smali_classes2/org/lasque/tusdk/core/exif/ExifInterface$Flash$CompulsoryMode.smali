.class public final enum Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/exif/ExifInterface$Flash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompulsoryMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

.field public static final enum FIRING:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

.field public static final enum SUPPRESSION:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

.field public static final enum UNKNOWN:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;->UNKNOWN:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    const-string v1, "FIRING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;->FIRING:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    const-string v1, "SUPPRESSION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;->SUPPRESSION:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    const-string v1, "AUTO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;->AUTO:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;->UNKNOWN:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;->FIRING:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;->SUPPRESSION:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;->AUTO:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;->a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;->a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$CompulsoryMode;

    return-object v0
.end method
