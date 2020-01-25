.class Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

.field final synthetic b:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$2;->b:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    iput-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$2;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$2;->b:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$2;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a(Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;)V

    return-void
.end method
