module test_module
implicit none
contains

subroutine multiply_add(a, b, c, d)
    double precision, intent(in) :: a, b, c
    double precision, intent(out) :: d

    d = a*b + c

end subroutine multiply_add

subroutine multiply_add_mat(a, b, c, d)
    double precision, dimension(2,2), intent(in) :: a, b, c
    double precision, dimension(2,2), intent(out) :: d

    d = matmul(a, b) + c

end subroutine multiply_add_mat

end module test_module
