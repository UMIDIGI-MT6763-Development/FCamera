.class public final enum Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/exif/ExifInterface$Flash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StrobeLightDetection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LIGHT_DETECTED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

.field public static final enum LIGHT_NOT_DETECTED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

.field public static final enum NO_DETECTION:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

.field public static final enum RESERVED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    const-string v1, "NO_DETECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;->NO_DETECTION:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    const-string v1, "RESERVED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;->RESERVED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    const-string v1, "LIGHT_NOT_DETECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;->LIGHT_NOT_DETECTED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    const-string v1, "LIGHT_DETECTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;->LIGHT_DETECTED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;->NO_DETECTION:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;->RESERVED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;->LIGHT_NOT_DETECTED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;->LIGHT_DETECTED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;->a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;->a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$StrobeLightDetection;

    return-object v0
.end method
