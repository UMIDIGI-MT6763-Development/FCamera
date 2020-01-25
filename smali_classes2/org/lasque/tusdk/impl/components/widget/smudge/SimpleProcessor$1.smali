.class Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a(Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
