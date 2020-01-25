.class Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->onTuFilterOnlineFragmentSelected(Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentInterface;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;J)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$2;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;

    iput-wide p2, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$2;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$2;->a:J

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;J)V

    return-void
.end method
