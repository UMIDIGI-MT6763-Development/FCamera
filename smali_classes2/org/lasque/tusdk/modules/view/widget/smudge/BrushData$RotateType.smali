.class public final enum Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RotateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum RotateAuto:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

.field public static final enum RotateLimitRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

.field public static final enum RotateNone:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

.field public static final enum RotateRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

.field private static final synthetic a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    const-string v1, "RotateNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateNone:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    const-string v1, "RotateAuto"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateAuto:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    const-string v1, "RotateRandom"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    const-string v1, "RotateLimitRandom"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateLimitRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateNone:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateAuto:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateLimitRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    return-object v0
.end method
