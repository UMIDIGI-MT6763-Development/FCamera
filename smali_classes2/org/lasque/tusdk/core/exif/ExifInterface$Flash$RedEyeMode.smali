.class public final enum Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/exif/ExifInterface$Flash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RedEyeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NONE:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

.field public static final enum SUPPORTED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;->NONE:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

    const-string v1, "SUPPORTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;->SUPPORTED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;->NONE:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;->SUPPORTED:Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;->a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;->a:[Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/exif/ExifInterface$Flash$RedEyeMode;

    return-object v0
.end method
