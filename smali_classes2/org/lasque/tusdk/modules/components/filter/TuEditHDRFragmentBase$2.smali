.class Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRunTimeTextures()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;

    invoke-static {v2}, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;->a(Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x100

    const/16 v4, 0x40

    invoke-direct {v1, v2, v3, v4}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;-><init>(Ljava/nio/ByteBuffer;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
