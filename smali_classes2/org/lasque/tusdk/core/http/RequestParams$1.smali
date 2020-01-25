.class Lorg/lasque/tusdk/core/http/RequestParams$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/http/RequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/RequestParams$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/lasque/tusdk/core/http/RequestParams$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/RequestParams$1;->a:Ljava/lang/String;

    iget-object p2, p0, Lorg/lasque/tusdk/core/http/RequestParams$1;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/http/RequestParams$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
