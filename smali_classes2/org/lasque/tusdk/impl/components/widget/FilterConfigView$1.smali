.class Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar$FilterConfigSeekbarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$1;->a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekbarDataChanged(Lorg/lasque/tusdk/impl/components/widget/FilterConfigSeekbar;Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$1;->a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->requestRender()V

    return-void
.end method
