.class public final enum Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CustomizeBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

.field public static final enum LargeBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

.field public static final enum MediumBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

.field public static final enum SmallBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

.field private static final synthetic c:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;


# instance fields
.field private a:I

.field private b:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    const-string v1, "SmallBrush"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->SmallBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    const-string v1, "MediumBrush"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->MediumBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    const-string v1, "LargeBrush"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->LargeBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    const-string v1, "CustomizeBrush"

    invoke-direct {v0, v1, v5, v3}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->CustomizeBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->SmallBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->MediumBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->LargeBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->CustomizeBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->c:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->b:F

    iput p3, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->c:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    return-object v0
.end method


# virtual methods
.method public getCustomizeBrushValue()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->b:F

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->a:I

    return v0
.end method

.method public setCustomizeBrushValue(F)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->b:F

    :cond_1
    :goto_0
    return-object p0
.end method
