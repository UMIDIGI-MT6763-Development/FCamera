.class Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$1;
.super Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$1;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$1;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setSmoothing(F)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$1;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->b(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setWhitening(F)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$1;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->c(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setSkinColor(F)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$1;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->d(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setEyeEnlargeSize(F)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$1;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->e(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setChinSize(F)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$1;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;)Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    return-object v0
.end method
