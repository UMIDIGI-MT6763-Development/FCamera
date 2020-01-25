.class public final enum Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TuNavButtonStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;",
        ">;",
        "Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;"
    }
.end annotation


# static fields
.field private static final synthetic b:[Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

.field public static final enum button:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

.field public static final enum highlight:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    const-string v1, "button"

    const-string v2, "lsq_color_transparent"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->button:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    new-instance v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    const-string v1, "highlight"

    const-string v2, "lsq_color_transparent"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->highlight:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    sget-object v1, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->button:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->highlight:Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    aput-object v1, v0, v4

    sput-object v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->b:[Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Lorg/lasque/tusdk/core/TuSdkContext;->getColorResId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->b:[Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;

    return-object v0
.end method


# virtual methods
.method public getBackgroundId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuNavigatorBar$TuNavButtonStyle;->a:I

    return v0
.end method
