.class public final enum Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PositionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PositionAuto:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

.field public static final enum PositionRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

.field private static final synthetic a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    const-string v1, "PositionAuto"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;->PositionAuto:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    const-string v1, "PositionRandom"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;->PositionRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;->PositionAuto:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;->PositionRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;->a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;->a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    return-object v0
.end method
