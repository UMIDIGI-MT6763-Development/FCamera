.class Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$1;
.super Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-static {v1, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->a(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;)Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    return-object v0
.end method
