.class Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->handleSwitchFilter(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$2;->c:Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;

    iput-object p2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$2;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$2;->c:Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$2;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->a(Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method