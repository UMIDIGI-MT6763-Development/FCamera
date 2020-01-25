.class public final enum Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/output/SelesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelesFillModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PreserveAspectRatio:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

.field public static final enum PreserveAspectRatioAndFill:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

.field public static final enum Stretch:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    const-string v1, "Stretch"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;->Stretch:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    const-string v1, "PreserveAspectRatio"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;->PreserveAspectRatio:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    const-string v1, "PreserveAspectRatioAndFill"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;->PreserveAspectRatioAndFill:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    sget-object v1, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;->Stretch:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;->PreserveAspectRatio:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;->PreserveAspectRatioAndFill:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;->a:[Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;->a:[Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    return-object v0
.end method
