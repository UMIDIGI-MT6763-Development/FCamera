.class Lorg/lasque/tusdk/core/secret/FilterAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/secret/FilterAdapter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/secret/FilterAdapter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/secret/FilterAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter$2;->a:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter$2;->a:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Lorg/lasque/tusdk/core/secret/FilterAdapter;Z)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter$2;->a:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b(Lorg/lasque/tusdk/core/secret/FilterAdapter;)V

    return-void
.end method
