@from_dict struct InviteMetadata
    inviter::User
    uses::Int
    max_uses::Int
    max_age::Int
    temporary::Bool
    created_at::DateTime
    revoked::Bool
end