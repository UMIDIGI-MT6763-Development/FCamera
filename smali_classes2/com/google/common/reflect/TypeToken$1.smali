.class final Lcom/google/common/reflect/TypeToken$1;
.super Lcom/google/common/reflect/TypeVisitor;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->replaceTypeVariablesWithWildcard(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$declaringClass:Ljava/lang/Class;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$1;->val$declaringClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$1;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lcom/google/common/reflect/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method visitClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .locals 0

    return-void
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 4

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$1;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$1;->val$declaringClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/reflect/TypeToken$1;->val$declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/reflect/TypeToken;->access$000(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    :goto_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken$1;->val$declaringClass:Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/google/common/reflect/TypeToken;->access$100([Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$1;->val$declaringClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/common/reflect/TypeToken$1;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/reflect/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    return-void
.end method
