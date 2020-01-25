.class public Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;


# instance fields
.field private b:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->init(Lorg/lasque/tusdk/core/TuSdkConfigs;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;->b:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    return-void
.end method

.method public static init(Lorg/lasque/tusdk/core/TuSdkConfigs;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;-><init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;

    :cond_0
    sget-object p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;

    return-object p0
.end method

.method public static shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;

    return-object v0
.end method


# virtual methods
.method public getBrushNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;->b:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->getCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBrushWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;->b:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->getBrushWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object p1

    return-object p1
.end method

.method public isInited()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;->b:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->isInited()Z

    move-result v0

    return v0
.end method
