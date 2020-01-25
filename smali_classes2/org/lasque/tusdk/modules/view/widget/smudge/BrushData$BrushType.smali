.class public final enum Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrushType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TypeEraser:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

.field public static final enum TypeMosaic:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

.field public static final enum TypeOnline:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

.field public static final enum TypeStamp:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

.field private static final synthetic a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    const-string v1, "TypeEraser"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeEraser:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    const-string v1, "TypeMosaic"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeMosaic:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    const-string v1, "TypeStamp"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeStamp:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    const-string v1, "TypeOnline"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeOnline:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeEraser:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeMosaic:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeStamp:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeOnline:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    return-object v0
.end method
